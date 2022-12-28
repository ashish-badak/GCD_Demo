import Foundation

public class DownloadManager {
    let queue = DispatchQueue(label: "com.gcd.downloadQueue", attributes: .concurrent)
    let semaphore: DispatchSemaphore
    
    private var songs: [Song] = []
    
    public init(maxParallelDownloads: Int) {
        semaphore = DispatchSemaphore(value: maxParallelDownloads)
    }
    
    public func enqueueForDownload(_ song: Song) {
        songs.append(song)
    }
    
    public func downloadAll() {
        let enqueuedSongs = songs
        songs = []
        
        enqueuedSongs.forEach { song in
            queue.async { [self] in
                print("⏱️ Waiting to download \"\(song.name)\"")
                semaphore.wait()
                print("⏳ Started downloading \"\(song.name)\"")
                sleep(UInt32.random(in: 1...3))
                print("✅ Downloaded \"\(song.name)\"")
                semaphore.signal()
            }
        }
    }
}

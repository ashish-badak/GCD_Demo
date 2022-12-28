import Foundation

let downloadManager = DownloadManager(maxParallelDownloads: 3)
Song.allCases.forEach { song in
    downloadManager.enqueueForDownload(song)
}
downloadManager.downloadAll()

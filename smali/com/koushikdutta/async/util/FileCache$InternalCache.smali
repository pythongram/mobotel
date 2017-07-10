.class Lcom/koushikdutta/async/util/FileCache$InternalCache;
.super Lcom/koushikdutta/async/util/LruCache;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/util/FileCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .registers 4
    .param p1, "this$0"    # Lcom/koushikdutta/async/util/FileCache;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    .line 205
    iget-wide v0, p1, Lcom/koushikdutta/async/util/FileCache;->size:J

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;-><init>(J)V

    .line 206
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)V
    .registers 7
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    .param p4, "newValue"    # Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    if-eqz p4, :cond_6

    .line 221
    :cond_5
    :goto_5
    return-void

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-boolean v0, v0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    if-nez v0, :cond_5

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-object v1, v1, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->sizeOf(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/koushikdutta/async/util/FileCache$CacheEntry;)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$InternalCache;->this$0:Lcom/koushikdutta/async/util/FileCache;

    iget-wide v0, v0, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    iget-wide v2, p2, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

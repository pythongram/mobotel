.class Lokhttp3/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/internal/DiskLruCache;

    .prologue
    .line 168
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v4

    .line 171
    :try_start_5
    iget-object v5, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->initialized:Z
    invoke-static {v5}, Lokhttp3/internal/DiskLruCache;->access$000(Lokhttp3/internal/DiskLruCache;)Z

    move-result v5

    if-nez v5, :cond_18

    :goto_d
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->closed:Z
    invoke-static {v3}, Lokhttp3/internal/DiskLruCache;->access$100(Lokhttp3/internal/DiskLruCache;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 172
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    .line 191
    :goto_17
    return-void

    :cond_18
    move v2, v3

    .line 171
    goto :goto_d

    .line 176
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->trimToSize()V
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$200(Lokhttp3/internal/DiskLruCache;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_37
    .catchall {:try_start_1a .. :try_end_1f} :catchall_34

    .line 182
    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$400(Lokhttp3/internal/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 183
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # invokes: Lokhttp3/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$500(Lokhttp3/internal/DiskLruCache;)V

    .line 184
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v3, 0x0

    # setter for: Lokhttp3/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$602(Lokhttp3/internal/DiskLruCache;I)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_3f
    .catchall {:try_start_1f .. :try_end_32} :catchall_34

    .line 190
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v4

    goto :goto_17

    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v2

    .line 177
    :catch_37
    move-exception v1

    .line 178
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_38
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v3, 0x1

    # setter for: Lokhttp3/internal/DiskLruCache;->mostRecentTrimFailed:Z
    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$302(Lokhttp3/internal/DiskLruCache;Z)Z

    goto :goto_1f

    .line 186
    .end local v1    # "ignored":Ljava/io/IOException;
    :catch_3f
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v3, 0x1

    # setter for: Lokhttp3/internal/DiskLruCache;->mostRecentRebuildFailed:Z
    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$702(Lokhttp3/internal/DiskLruCache;Z)Z

    .line 188
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    # getter for: Lokhttp3/internal/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    # setter for: Lokhttp3/internal/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$802(Lokhttp3/internal/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_34

    goto :goto_32
.end method

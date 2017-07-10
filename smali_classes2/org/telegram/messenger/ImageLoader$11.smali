.class Lorg/telegram/messenger/ImageLoader$11;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 2023
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 2026
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v5, :cond_d

    .line 2027
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # operator-- for: Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4010(Lorg/telegram/messenger/ImageLoader;)I

    .line 2029
    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v5, :cond_4f

    .line 2030
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    if-ne v5, v11, :cond_ac

    .line 2031
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->canRetry:Z
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2032
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;
    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 2033
    .local v1, "newTask":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    new-instance v3, Lorg/telegram/messenger/ImageLoader$11$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/ImageLoader$11$1;-><init>(Lorg/telegram/messenger/ImageLoader$11;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    .line 2040
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const-wide/16 v6, 0x3e8

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2053
    .end local v1    # "newTask":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_4f
    :goto_4f
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4000(Lorg/telegram/messenger/ImageLoader;)I

    move-result v5

    if-ge v5, v9, :cond_126

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_126

    .line 2054
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 2055
    .local v4, "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Void;

    aput-object v12, v6, v10

    aput-object v12, v6, v11

    aput-object v12, v6, v9

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2056
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # operator++ for: Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4008(Lorg/telegram/messenger/ImageLoader;)I

    goto :goto_4f

    .line 2043
    .end local v4    # "task":Lorg/telegram/messenger/ImageLoader$HttpFileTask;
    :cond_83
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_4f

    .line 2046
    :cond_ac
    iget v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$reason:I

    if-ne v5, v9, :cond_4f

    .line 2047
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$4600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->ext:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2049
    .local v0, "file":Ljava/io/File;
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2050
    .local v2, "result":Ljava/lang/String;
    :goto_104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->url:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4f

    .line 2049
    .end local v2    # "result":Ljava/lang/String;
    :cond_11b
    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$11;->val$oldTask:Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpFileTask;->tempFile:Ljava/io/File;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_104

    .line 2058
    .end local v0    # "file":Ljava/io/File;
    :cond_126
    return-void
.end method

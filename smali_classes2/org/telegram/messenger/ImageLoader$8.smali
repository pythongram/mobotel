.class Lorg/telegram/messenger/ImageLoader$8;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1903
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$8;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1906
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$8;->val$location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1907
    .local v0, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v0, :cond_11

    .line 1914
    :goto_10
    return-void

    .line 1910
    :cond_11
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1911
    .local v1, "oldTask":Lorg/telegram/messenger/ImageLoader$HttpImageTask;
    new-instance v2, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v4

    # getter for: Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    iput-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1912
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1913
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$8;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v3, 0x0

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto :goto_10
.end method

.class Lorg/telegram/messenger/ImageLoader$9;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$finalFile:Ljava/io/File;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1919
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1922
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1923
    .local v5, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-eqz v5, :cond_2c

    .line 1924
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iget-object v10, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3400(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v11

    # getter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3500(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;

    move-result-object v12

    # invokes: Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    invoke-static {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1925
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    :cond_2c
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1928
    .local v4, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v4, :cond_3d

    .line 1960
    :cond_3c
    return-void

    .line 1931
    :cond_3d
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ImageLoader$CacheOutTask;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4e
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_b9

    .line 1934
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1935
    .local v6, "key":Ljava/lang/String;
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1936
    .local v2, "filter":Ljava/lang/String;
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageReceiver;

    .line 1937
    .local v3, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1938
    .local v1, "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v1, :cond_b3

    .line 1939
    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1940
    .restart local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1941
    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 1942
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    .line 1943
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    iput-boolean v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    .line 1944
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 1945
    new-instance v8, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v8, v9, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1946
    iput-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 1947
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    iput-boolean v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    .line 1948
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    iget-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    :cond_b3
    invoke-virtual {v1, v3, v6, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1953
    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v6    # "key":Ljava/lang/String;
    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3c

    .line 1954
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v8, :cond_d6

    .line 1955
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1953
    :goto_d3
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 1957
    :cond_d6
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_d3
.end method

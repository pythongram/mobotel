.class Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

.field final synthetic val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .prologue
    .line 929
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "toSet":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_1b

    .line 934
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 945
    :cond_9
    :goto_9
    move-object v2, v1

    .line 946
    .local v2, "toSetFinal":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 952
    return-void

    .line 935
    .end local v2    # "toSetFinal":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1b
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_9

    .line 936
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;
    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 937
    if-nez v1, :cond_4d

    .line 938
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;
    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$1100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->this$1:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    # getter for: Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;
    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 939
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_9

    .line 941
    :cond_4d
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;->val$bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 942
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9
.end method

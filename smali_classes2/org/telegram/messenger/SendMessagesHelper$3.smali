.class Lorg/telegram/messenger/SendMessagesHelper$3;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 463
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$cacheFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 466
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v3, :cond_56

    .line 468
    :try_start_e
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 470
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v7, v7, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v7, :cond_5f

    :goto_30
    invoke-static {v0, v4, v5, v6, v2}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 471
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_39} :catch_61

    .line 477
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_39
    :goto_39
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_56

    .line 478
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 479
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 482
    :cond_56
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SendMessagesHelper$3$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$3;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 495
    return-void

    .line 470
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5f
    const/4 v2, 0x0

    goto :goto_30

    .line 473
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_61
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$3;->val$message:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 475
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_39
.end method

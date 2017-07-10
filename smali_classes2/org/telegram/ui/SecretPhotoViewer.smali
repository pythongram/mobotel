.class public Lorg/telegram/ui/SecretPhotoViewer;
.super Ljava/lang/Object;
.source "SecretPhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretPhotoViewer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private isVisible:Z

.field private parentActivity:Landroid/app/Activity;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SecretPhotoViewer;Landroid/graphics/Canvas;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretPhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SecretPhotoViewer;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretPhotoViewer;
    .registers 4

    .prologue
    .line 151
    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    .line 152
    .local v0, "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    if-nez v0, :cond_14

    .line 153
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 154
    :try_start_7
    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    .line 155
    if-nez v0, :cond_13

    .line 156
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/SecretPhotoViewer;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :try_start_10
    sput-object v1, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 158
    .end local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 160
    :cond_14
    return-object v0

    .line 158
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/SecretPhotoViewer;
    goto :goto_16
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 362
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_57

    .line 365
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 366
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 368
    .local v1, "bitmapHeight":I
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float v5, v8, v9

    .line 369
    .local v5, "scaleX":F
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float v6, v8, v9

    .line 370
    .local v6, "scaleY":F
    cmpl-float v8, v5, v6

    if-lez v8, :cond_5b

    move v4, v6

    .line 371
    .local v4, "scale":F
    :goto_41
    int-to-float v8, v2

    mul-float/2addr v8, v4

    float-to-int v7, v8

    .line 372
    .local v7, "width":I
    int-to-float v8, v1

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 374
    .local v3, "height":I
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x2

    neg-int v10, v3

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v9, v10, v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 375
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 377
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    .end local v3    # "height":I
    .end local v4    # "scale":F
    .end local v5    # "scaleX":F
    .end local v6    # "scaleY":F
    .end local v7    # "width":I
    :cond_57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 378
    return-void

    .restart local v1    # "bitmapHeight":I
    .restart local v2    # "bitmapWidth":I
    .restart local v5    # "scaleX":F
    .restart local v6    # "scaleY":F
    :cond_5b
    move v4, v5

    .line 370
    goto :goto_41
.end method


# virtual methods
.method public closePhoto()V
    .registers 5

    .prologue
    .line 316
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 318
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_17

    .line 338
    :cond_16
    :goto_16
    return-void

    .line 321
    :cond_17
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 324
    new-instance v2, Lorg/telegram/ui/SecretPhotoViewer$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretPhotoViewer$2;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 331
    :try_start_2a
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 332
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 333
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_42

    goto :goto_16

    .line 335
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_42
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public destroyPhotoViewer()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 343
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    .line 344
    iput-object v4, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 345
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_21

    .line 358
    :cond_20
    :goto_20
    return-void

    .line 349
    :cond_21
    :try_start_21
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 351
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 353
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_38
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3b} :catch_3e

    .line 357
    :goto_3b
    sput-object v4, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    goto :goto_20

    .line 354
    :catch_3e
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 166
    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, v7, :cond_2d

    .line 167
    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v7, :cond_a

    .line 195
    :cond_9
    :goto_9
    return-void

    .line 170
    :cond_a
    const/4 v7, 0x1

    aget-object v7, p2, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    .local v1, "channelId":I
    if-nez v1, :cond_9

    .line 174
    aget-object v4, p2, v8

    check-cast v4, Ljava/util/ArrayList;

    .line 175
    .local v4, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V

    goto :goto_9

    .line 178
    .end local v1    # "channelId":I
    .end local v4    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, v7, :cond_9

    .line 179
    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    if-eqz v7, :cond_9

    .line 182
    aget-object v6, p2, v8

    check-cast v6, Landroid/util/SparseArray;

    .line 183
    .local v6, "mids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 184
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 185
    .local v3, "key":I
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 186
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_52
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 187
    .local v5, "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_52

    .line 188
    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 189
    iget-object v7, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v7}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    goto :goto_9

    .line 183
    .end local v5    # "mid":Ljava/lang/Integer;
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;)V
    .registers 16
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 251
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_15

    .line 309
    :cond_14
    :goto_14
    return-void

    .line 255
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 256
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 258
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    .line 259
    .local v12, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget v4, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 260
    .local v4, "size":I
    if-nez v4, :cond_36

    .line 261
    const/4 v4, -0x1

    .line 263
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 264
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v8, :cond_9a

    .line 265
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v10

    .line 266
    .local v10, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 267
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 268
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_65

    .line 269
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 271
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 273
    const/4 v0, 0x1

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 277
    :cond_65
    :try_start_65
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6c} :catch_da

    move-result-object v7

    .line 281
    :goto_6d
    if-eqz v7, :cond_9a

    .line 282
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .restart local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 286
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9a
    if-eqz v8, :cond_df

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_a1
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 297
    :try_start_a8
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 299
    .local v13, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v13, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bf} :catch_eb

    .line 305
    .end local v13    # "wm":Landroid/view/WindowManager;
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 306
    .restart local v13    # "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v13, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    goto/16 :goto_14

    .line 278
    .end local v13    # "wm":Landroid/view/WindowManager;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_da
    move-exception v9

    .line 279
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 289
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_df
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V

    goto :goto_a1

    .line 301
    :catch_eb
    move-exception v9

    .line 302
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_bf
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v5, 0x41980000    # 19.0f

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v1, p1, :cond_9

    .line 248
    :goto_8
    return-void

    .line 201
    :cond_9
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 203
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2e

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 211
    :cond_2e
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 216
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 217
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/SecretPhotoViewer$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SecretPhotoViewer$1;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;)V

    .line 231
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 236
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 243
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x63

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 245
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_8
.end method

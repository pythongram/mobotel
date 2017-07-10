.class Lorg/telegram/ui/Components/ChatActivityEnterView$2;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v8, 0x17

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 325
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_16

    .line 376
    :cond_15
    :goto_15
    return-void

    .line 328
    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnableStarted:Z
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 329
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_8e

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8e

    .line 330
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_84

    .line 331
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "android.permission.RECORD_AUDIO"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_72

    move v2, v5

    .line 332
    .local v2, "hasAudio":Z
    :goto_42
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "android.permission.CAMERA"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_74

    move v3, v5

    .line 333
    .local v3, "hasVideo":Z
    :goto_51
    if-eqz v2, :cond_55

    if-nez v3, :cond_84

    .line 334
    :cond_55
    if-nez v2, :cond_76

    if-nez v3, :cond_76

    const/4 v7, 0x2

    :goto_5a
    new-array v4, v7, [Ljava/lang/String;

    .line 335
    .local v4, "permissions":[Ljava/lang/String;
    if-nez v2, :cond_78

    if-nez v3, :cond_78

    .line 336
    const-string v7, "android.permission.RECORD_AUDIO"

    aput-object v7, v4, v6

    .line 337
    const-string v6, "android.permission.CAMERA"

    aput-object v6, v4, v5

    .line 343
    :goto_68
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_15

    .end local v2    # "hasAudio":Z
    .end local v3    # "hasVideo":Z
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_72
    move v2, v6

    .line 331
    goto :goto_42

    .restart local v2    # "hasAudio":Z
    :cond_74
    move v3, v6

    .line 332
    goto :goto_51

    .restart local v3    # "hasVideo":Z
    :cond_76
    move v7, v5

    .line 334
    goto :goto_5a

    .line 338
    .restart local v4    # "permissions":[Ljava/lang/String;
    :cond_78
    if-nez v2, :cond_7f

    .line 339
    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v4, v6

    goto :goto_68

    .line 341
    :cond_7f
    const-string v5, "android.permission.CAMERA"

    aput-object v5, v4, v6

    goto :goto_68

    .line 347
    .end local v2    # "hasAudio":Z
    .end local v3    # "hasVideo":Z
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_84
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    goto :goto_15

    .line 349
    :cond_8e
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    if-eqz v7, :cond_f0

    .line 350
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_b9

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "android.permission.RECORD_AUDIO"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_b9

    .line 351
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v5, v6

    invoke-virtual {v7, v5, v9}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_15

    .line 357
    :cond_b9
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    long-to-int v6, v6

    if-gez v6, :cond_121

    .line 358
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    long-to-int v7, v8

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 359
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_11e

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v6, v7, :cond_11e

    .line 360
    const-string v0, "bigchat_upload_audio"

    .line 367
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v0, "action":Ljava/lang/String;
    :goto_e4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 371
    .end local v0    # "action":Ljava/lang/String;
    :cond_f0
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v7, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 372
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v6, v8, v9, v7}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 373
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 374
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$2;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_15

    .line 362
    .restart local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11e
    const-string v0, "chat_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_e4

    .line 365
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_121
    const-string v0, "pm_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_e4
.end method

.class Lorg/telegram/ui/Components/ChatActivityEnterView$15;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 982
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 985
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_b5

    .line 986
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v8

    const v9, -0x25a9b3

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 987
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    if-eqz v8, :cond_83

    .line 988
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_44

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_44

    .line 989
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "android.permission.RECORD_AUDIO"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 990
    const/4 v8, 0x0

    .line 1102
    :goto_43
    return v8

    .line 994
    :cond_44
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v8

    long-to-int v8, v8

    if-gez v8, :cond_80

    .line 995
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    long-to-int v9, v10

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 996
    .local v3, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_7d

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v8, v9, :cond_7d

    .line 997
    const-string v0, "bigchat_upload_audio"

    .line 1004
    .end local v3    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v0, "action":Ljava/lang/String;
    :goto_6f
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v8

    if-nez v8, :cond_83

    .line 1005
    const/4 v8, 0x0

    goto :goto_43

    .line 999
    .end local v0    # "action":Ljava/lang/String;
    .restart local v3    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7d
    const-string v0, "chat_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_6f

    .line 1002
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_80
    const-string v0, "pm_upload_audio"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_6f

    .line 1008
    .end local v0    # "action":Ljava/lang/String;
    :cond_83
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1009
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    invoke-virtual {v8, v10, v11, v9}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1010
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 1011
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1101
    :cond_b0
    :goto_b0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1102
    const/4 v8, 0x1

    goto :goto_43

    .line 1012
    :cond_b5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c3

    .line 1013
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_141

    .line 1015
    :cond_c3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->recordTimeCount()J

    move-result-wide v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gtz v8, :cond_fb

    .line 1016
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    new-instance v9, Lde/jurihock/voicesmith/VoiceChangerAlert;

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->val$context:Landroid/app/Activity;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lde/jurihock/voicesmith/VoiceChangerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1017
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1018
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1019
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_b0

    .line 1023
    :cond_fb
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const-string v10, "chat_messagePanelIcons"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1026
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1028
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1029
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v8, "confirmatin_audio"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1030
    .local v2, "confirmatinAudio":Z
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    if-eqz v2, :cond_13f

    const/4 v8, 0x2

    :goto_12f
    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1031
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1032
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto/16 :goto_b0

    .line 1030
    :cond_13f
    const/4 v8, 0x1

    goto :goto_12f

    .line 1055
    .end local v2    # "confirmatinAudio":Z
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 1056
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1057
    .local v7, "x":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    neg-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_188

    .line 1058
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v8

    if-eqz v8, :cond_294

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_294

    .line 1059
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    .line 1063
    :goto_17d
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1064
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 1067
    :cond_188
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getX()F

    move-result v8

    add-float/2addr v7, v8

    .line 1068
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1069
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1ec

    .line 1070
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    sub-float v4, v7, v8

    .line 1071
    .local v4, "dist":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 1072
    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    float-to-int v9, v4

    add-int/2addr v8, v9

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1073
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v9

    div-float v9, v4, v9

    add-float v1, v8, v9

    .line 1075
    .local v1, "alpha":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_29e

    .line 1076
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1080
    :cond_1e3
    :goto_1e3
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1082
    .end local v1    # "alpha":F
    .end local v4    # "dist":F
    :cond_1ec
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getX()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_25b

    .line 1083
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_25b

    .line 1084
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1085
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1086
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2a6

    .line 1087
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1093
    :cond_25b
    :goto_25b
    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-le v8, v9, :cond_b0

    .line 1094
    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1095
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 1096
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1098
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, -0x40800000    # -1.0f

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto/16 :goto_b0

    .line 1061
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_294
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto/16 :goto_17d

    .line 1077
    .restart local v1    # "alpha":F
    .restart local v4    # "dist":F
    .restart local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_29e
    const/4 v8, 0x0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1e3

    .line 1078
    const/4 v1, 0x0

    goto/16 :goto_1e3

    .line 1088
    .end local v1    # "alpha":F
    .end local v4    # "dist":F
    :cond_2a6
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v8

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_25b

    .line 1089
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_25b
.end method

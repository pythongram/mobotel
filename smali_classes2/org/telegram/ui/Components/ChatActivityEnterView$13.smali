.class Lorg/telegram/ui/Components/ChatActivityEnterView$13;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 880
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 883
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 884
    .local v0, "playing":Lorg/telegram/messenger/MessageObject;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 885
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 887
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 888
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 890
    :cond_30
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 891
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$13;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 892
    return-void
.end method

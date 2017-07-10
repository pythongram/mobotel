.class Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$12;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    .prologue
    .line 852
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 12
    .param p1, "i"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 857
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->val$fragment:Lorg/telegram/ui/ChatActivity;

    move v3, v8

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 860
    :cond_3e
    return-void
.end method

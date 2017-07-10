.class Lorg/telegram/ui/ChatActivity$20$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$20;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$20;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$20;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$20;

    .prologue
    .line 2160
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$20$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$20$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2163
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2175
    :goto_b
    return-void

    .line 2166
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLongClickable(Z)V

    .line 2169
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->openSecretPhotoRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$9202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$20$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    # invokes: Lorg/telegram/ui/ChatActivity;->sendSecretMessageRead(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2171
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$20$1;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 2173
    :cond_47
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$20$1;->this$1:Lorg/telegram/ui/ChatActivity$20;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$20;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretPhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 2174
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$20$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretPhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_b
.end method

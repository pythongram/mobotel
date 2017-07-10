.class Lorg/telegram/ui/Components/ChatActivityEnterView$7;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 664
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 670
    const/4 v2, 0x4

    if-ne p2, v2, :cond_b

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 682
    :goto_a
    return v1

    .line 673
    :cond_b
    if-eqz p3, :cond_41

    if-nez p2, :cond_41

    .line 674
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_1b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_a

    .line 677
    :cond_2f
    const/16 v2, 0x71

    if-eq p2, v2, :cond_37

    const/16 v2, 0x72

    if-ne p2, v2, :cond_41

    .line 678
    :cond_37
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3e

    move v0, v1

    :cond_3e
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    goto :goto_a

    :cond_41
    move v1, v0

    .line 682
    goto :goto_a
.end method

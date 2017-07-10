.class Lorg/telegram/ui/Components/ChatActivityEnterView$25;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->doneEditingMessage()V
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
    .line 1753
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$25;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$25;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$25;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1758
    return-void
.end method

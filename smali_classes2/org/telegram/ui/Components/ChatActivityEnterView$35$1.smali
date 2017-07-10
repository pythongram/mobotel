.class Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$35;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

.field final synthetic val$sticker:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    .prologue
    .line 2687
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;->val$sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2690
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;->val$sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2691
    return-void
.end method

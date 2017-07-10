.class Lorg/telegram/ui/Components/ChatActivityEnterView$35$3;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$35;->onClearEmojiRecent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    .prologue
    .line 2804
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$3;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2807
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35$3;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    .line 2808
    return-void
.end method

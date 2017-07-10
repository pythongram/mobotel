.class Lorg/telegram/ui/Components/EmojiView$7$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$7;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$7;Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$7;

    .prologue
    .line 784
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$7$1;->this$1:Lorg/telegram/ui/Components/EmojiView$7;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$7$1;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$7$1;->this$1:Lorg/telegram/ui/Components/EmojiView$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$7;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$7$1;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->toggleFavSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 787
    return-void
.end method

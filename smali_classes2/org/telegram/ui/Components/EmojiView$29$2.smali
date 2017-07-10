.class Lorg/telegram/ui/Components/EmojiView$29$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$29;->onLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$29;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$29;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$29;

    .prologue
    .line 1291
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29$2;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29$2;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    .line 1294
    return-void
.end method

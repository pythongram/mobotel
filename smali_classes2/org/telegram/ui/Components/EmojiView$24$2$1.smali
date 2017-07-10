.class Lorg/telegram/ui/Components/EmojiView$24$2$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$24$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/EmojiView$24$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$24$2;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/Components/EmojiView$24$2;

    .prologue
    .line 1181
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$24$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$24$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$24$2$1;->this$2:Lorg/telegram/ui/Components/EmojiView$24$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$24$2;->this$1:Lorg/telegram/ui/Components/EmojiView$24;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$24;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->clearFavStickers()V

    .line 1184
    return-void
.end method

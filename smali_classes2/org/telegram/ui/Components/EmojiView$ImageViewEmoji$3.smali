.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field final synthetic val$emoji:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;->val$emoji:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$3;->val$emoji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->toggleFavEmoji(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.class Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FeaturedStickerSetCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$600(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$600(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$602(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 283
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$600(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$600(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$4;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->checkImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$800(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_1e
    return-void
.end method

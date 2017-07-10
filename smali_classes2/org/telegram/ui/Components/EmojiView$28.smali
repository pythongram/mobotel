.class Lorg/telegram/ui/Components/EmojiView$28;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1237
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1251
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    # invokes: Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V
    invoke-static {v0, p1, v1, p3}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;III)V

    .line 1241
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5500(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1246
    return-void
.end method

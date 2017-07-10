.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    move-result-object v0

    if-nez v0, :cond_a

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_9
    return v0

    .line 149
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$4;->val$position:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;->onLongClick(I)Z

    move-result v0

    goto :goto_9
.end method

.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;
.super Ljava/lang/Object;
.source "ScrollSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    move-result-object v0

    if-nez v0, :cond_a

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_9
    return v0

    .line 171
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTabLongClickListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->val$position:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$OnTabLongClickListener;->onLongClick(I)Z

    move-result v0

    goto :goto_9
.end method

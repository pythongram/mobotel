.class Lorg/telegram/ui/ProfileActivity$TopView;
.super Landroid/view/View;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopView"
.end annotation


# instance fields
.field private currentColor:I

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 209
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    .line 210
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$TopView;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x42b60000    # 91.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v6, v0, v2

    .line 228
    .local v6, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$TopView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->extraHeight:I
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->extraHeight:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 232
    :cond_39
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_22

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_16
    add-int/2addr v0, v2

    const/high16 v2, 0x42b60000    # 91.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ProfileActivity$TopView;->setMeasuredDimension(II)V

    .line 215
    return-void

    .line 214
    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 219
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    if-eq p1, v0, :cond_c

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$TopView;->invalidate()V

    .line 223
    :cond_c
    return-void
.end method

.class Lorg/telegram/ui/ActionBar/AlertDialog$4;
.super Landroid/widget/FrameLayout;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 408
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$4;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getChildCount()I

    move-result v2

    .line 412
    .local v2, "count":I
    const/4 v3, 0x0

    .line 413
    .local v3, "positiveButton":Landroid/view/View;
    sub-int v4, p4, p2

    .line 414
    .local v4, "width":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    if-ge v0, v2, :cond_a0

    .line 415
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_45

    .line 417
    move-object v3, v1

    .line 418
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 414
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 419
    :cond_45
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_82

    .line 420
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v5, v6, v7

    .line 421
    .local v5, "x":I
    if-eqz v3, :cond_6c

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 424
    :cond_6c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_42

    .line 426
    .end local v5    # "x":I
    :cond_82
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_42

    .line 429
    .end local v1    # "child":Landroid/view/View;
    :cond_a0
    return-void
.end method

.class Lorg/telegram/ui/ActionBar/AlertDialog$2;
.super Landroid/widget/ScrollView;
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
    .line 312
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 316
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_41

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getScrollY()I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    :cond_41
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_84

    .line 321
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$2;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    # getter for: Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    :cond_84
    return v0
.end method

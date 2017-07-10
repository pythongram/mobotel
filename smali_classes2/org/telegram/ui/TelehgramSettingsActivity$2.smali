.class Lorg/telegram/ui/TelehgramSettingsActivity$2;
.super Landroid/widget/FrameLayout;
.source "TelehgramSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "drawingTime"    # J

    .prologue
    .line 335
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    if-ne p2, v5, :cond_46

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 337
    .local v3, "result":Z
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$100(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "actionBarHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity$2;->getChildCount()I

    move-result v2

    .line 340
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v2, :cond_3c

    .line 341
    invoke-virtual {p0, v0}, Lorg/telegram/ui/TelehgramSettingsActivity$2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 342
    .local v4, "view":Landroid/view/View;
    if-ne v4, p2, :cond_25

    .line 340
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 345
    :cond_25
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_22

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_22

    move-object v5, v4

    .line 346
    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 347
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 352
    .end local v4    # "view":Landroid/view/View;
    :cond_3c
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity$2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$200(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 356
    .end local v0    # "a":I
    .end local v1    # "actionBarHeight":I
    .end local v2    # "childCount":I
    .end local v3    # "result":Z
    :cond_45
    :goto_45
    return v3

    :cond_46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    goto :goto_45
.end method

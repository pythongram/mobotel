.class Lorg/telegram/ui/Components/PhotoFilterView$8;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1993
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$8;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1996
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1997
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_23

    .line 1998
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$8;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8500(Lorg/telegram/ui/Components/PhotoFilterView;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v3, v2, v0

    if-ne v0, v1, :cond_1f

    const/4 v2, -0x1

    :goto_19
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1997
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1998
    :cond_1f
    const v2, -0x7f7f80

    goto :goto_19

    .line 2000
    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$8;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v2

    iput v1, v2, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    .line 2001
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$8;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    .line 2002
    return-void
.end method

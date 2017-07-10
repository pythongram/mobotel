.class Lorg/telegram/ui/Components/PhotoPaintView$10;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenMenu()Z
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 333
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    .line 340
    :cond_d
    :goto_d
    return-void

    .line 335
    :cond_e
    if-ne p1, v1, :cond_16

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    goto :goto_d

    .line 337
    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$10;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    goto :goto_d
.end method

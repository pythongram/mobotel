.class Lorg/telegram/ui/Components/StickerMasksView$2;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
.source "StickerMasksView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickerMasksView;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$2;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$2;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$100(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->access$200(Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$2;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$100(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->access$300(Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;)I

    move-result v0

    .line 85
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

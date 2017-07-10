.class Lorg/telegram/ui/Components/EmojiView$12;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spanCount"    # I

    .prologue
    .line 848
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 850
    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .registers 8
    .param p1, "i"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 854
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$4100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 855
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v3, v3

    :goto_1f
    iput v3, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 856
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_32

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-eqz v5, :cond_32

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v4, v4

    :cond_32
    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    .line 857
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_35
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5b

    .line 858
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 859
    .local v0, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_4d

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_60

    .line 860
    :cond_4d
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    .line 861
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    .line 865
    .end local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_5b
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    return-object v3

    .end local v1    # "b":I
    :cond_5e
    move v3, v4

    .line 855
    goto :goto_1f

    .line 857
    .restart local v0    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v1    # "b":I
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_35
.end method

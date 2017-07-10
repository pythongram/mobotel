.class Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    .prologue
    .line 2321
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2324
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 2325
    .local v1, "parent":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    .line 2326
    .local v0, "pack":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2337
    :cond_36
    :goto_36
    return-void

    .line 2329
    :cond_37
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2330
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    .line 2336
    :goto_5f
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setDrawProgress(Z)V

    goto :goto_36

    .line 2333
    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    goto :goto_5f
.end method

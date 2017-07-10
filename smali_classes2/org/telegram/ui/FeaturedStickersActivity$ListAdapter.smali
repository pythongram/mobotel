.class Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FeaturedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FeaturedStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FeaturedStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 201
    iput-object p2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/FeaturedStickersActivity;->access$300(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$000(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$100(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 269
    :cond_11
    :goto_11
    return v0

    .line 266
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersShadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$500(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 267
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 229
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0, p2}, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_77

    .line 212
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .line 214
    .local v1, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 216
    .local v3, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p2, v4, :cond_78

    move v4, v5

    :goto_26
    iget-object v7, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->unreadStickers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/FeaturedStickersActivity;->access$400(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_7a

    iget-object v7, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->unreadStickers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/FeaturedStickersActivity;->access$400(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    :goto_42
    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZ)V

    .line 217
    iget-object v4, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 218
    .local v2, "installing":Z
    if-eqz v2, :cond_74

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 219
    iget-object v4, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    .line 223
    :cond_74
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    .line 225
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .end local v1    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .end local v2    # "installing":Z
    .end local v3    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_77
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetCell;
    .restart local v3    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_78
    move v4, v6

    .line 216
    goto :goto_26

    :cond_7a
    move v5, v6

    goto :goto_42
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_46

    .line 258
    :goto_4
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 237
    :pswitch_14
    new-instance v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;-><init>(Landroid/content/Context;)V

    .line 238
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v0

    .line 239
    check-cast v1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    new-instance v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 254
    :pswitch_30
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 255
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200d7

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 235
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_14
        :pswitch_30
    .end packed-switch
.end method

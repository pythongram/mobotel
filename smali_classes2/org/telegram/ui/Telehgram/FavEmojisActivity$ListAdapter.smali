.class Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FavEmojisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;
    .param p2, "x1"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$000(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-lt p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$400(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 176
    :cond_11
    :goto_11
    return v0

    .line 167
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startSeparatorRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$900(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1000(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-ne p1, v1, :cond_24

    .line 168
    :cond_22
    const/4 v0, 0x1

    goto :goto_11

    .line 170
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->infoRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-eq p1, v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$700(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-ne p1, v1, :cond_36

    .line 171
    :cond_34
    const/4 v0, 0x2

    goto :goto_11

    .line 173
    :cond_36
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$800(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 174
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 99
    const/4 v5, 0x1

    .line 100
    .local v5, "z":Z
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    .line 101
    .local v4, "type":I
    if-nez v4, :cond_75

    .line 102
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 103
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 104
    .local v3, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;

    const/4 v8, 0x0

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v6, v3, v8, v9, v7}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 105
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$400(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq p2, v8, :cond_3f

    const/4 v7, 0x1

    :cond_3f
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->setNeedDivider(Z)V

    .line 132
    .end local v3    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_42
    :goto_42
    return-void

    .line 108
    :cond_43
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;

    .line 110
    .local v2, "emojiImageView":Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$400(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_71

    .line 111
    const/4 v5, 0x0

    .line 113
    :cond_71
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->setNeedDivider(Z)V

    goto :goto_42

    .line 114
    .end local v2    # "emojiImageView":Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;
    :cond_75
    const/4 v6, 0x2

    if-ne v4, v6, :cond_a6

    .line 115
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 116
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->infoRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v6

    if-ne p2, v6, :cond_91

    .line 117
    const-string v6, "FavReorderInfo"

    const v7, 0x7f0706ef

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 118
    :cond_91
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$700(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v6

    if-ne p2, v6, :cond_42

    .line 119
    const-string v6, "ListEmpty"

    const v7, 0x7f070752

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 121
    .end local v0    # "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :cond_a6
    const/4 v6, 0x3

    if-ne v4, v6, :cond_42

    .line 122
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 123
    .local v1, "cell2":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$800(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v6

    if-ne p2, v6, :cond_42

    .line 126
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 127
    const-string v6, "FavStickersClear"

    const v8, 0x7f0706f4

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_42

    .line 129
    :cond_cb
    const-string v6, "FavEmojisClear"

    const v8, 0x7f0706ea

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_42
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 136
    packed-switch p2, :pswitch_data_8e

    .line 155
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 159
    :goto_17
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 138
    .end local v0    # "view":Landroid/view/View;
    :pswitch_27
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 139
    new-instance v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 140
    check-cast v1, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;->setAspectFit(Z)V

    .line 145
    :goto_43
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_17

    .line 142
    .end local v0    # "view":Landroid/view/View;
    :cond_4d
    new-instance v0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    move-object v1, v0

    .line 143
    check-cast v1, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_43

    .line 148
    .end local v0    # "view":Landroid/view/View;
    :pswitch_63
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 149
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_17

    .line 151
    .end local v0    # "view":Landroid/view/View;
    :pswitch_6f
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 152
    .restart local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0200d7

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 136
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_63
        :pswitch_6f
    .end packed-switch
.end method

.method public swapElements(II)V
    .registers 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 180
    if-eq p1, p2, :cond_8

    .line 181
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1102(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)Z

    .line 183
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v4

    sub-int v2, p1, v4

    .line 184
    .local v2, "fromIndexT":I
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I

    move-result v4

    sub-int v3, p2, v4

    .line 185
    .local v3, "toIndexT":I
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 186
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 187
    .local v0, "from":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v0    # "from":Lorg/telegram/tgnet/TLRPC$Document;
    :goto_48
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->notifyItemMoved(II)V

    .line 195
    return-void

    .line 190
    :cond_4c
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "from2":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_48
.end method

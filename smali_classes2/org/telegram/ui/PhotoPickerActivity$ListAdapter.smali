.class Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1127
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1128
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1129
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1146
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    if-nez v2, :cond_65

    .line 1147
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1155
    :goto_28
    return v0

    .line 1149
    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v2

    if-nez v2, :cond_47

    .line 1150
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$300(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_45

    :goto_43
    add-int/2addr v0, v2

    goto :goto_28

    :cond_45
    move v0, v1

    goto :goto_43

    .line 1151
    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->type:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$800(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v2

    if-ne v2, v1, :cond_65

    .line 1152
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_63

    :goto_61
    add-int/2addr v0, v2

    goto :goto_28

    :cond_63
    move v0, v1

    goto :goto_61

    .line 1155
    :cond_65
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_28
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 1160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_34

    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_36

    .line 1290
    :cond_34
    const/4 v0, 0x0

    .line 1292
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x1

    goto :goto_35
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v3

    if-nez v3, :cond_2e

    .line 1134
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1135
    .local v0, "position":I
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    .line 1136
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 1141
    .end local v0    # "position":I
    :cond_2e
    :goto_2e
    return v1

    .restart local v0    # "position":I
    :cond_2f
    move v1, v2

    .line 1136
    goto :goto_2e

    .line 1138
    :cond_31
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2e

    move v1, v2

    goto :goto_2e
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 14
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const v9, 0x7f0201fa

    .line 1224
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_1d4

    .line 1285
    :cond_d
    :goto_d
    return-void

    .line 1226
    :pswitch_e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 1227
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->itemWidth:I

    .line 1228
    iget-object v1, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 1229
    .local v1, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setTag(Ljava/lang/Object;)V

    .line 1230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setTag(Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {v1, v7, v6}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1234
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v5

    if-eqz v5, :cond_101

    .line 1235
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1236
    .local v3, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_90

    .line 1237
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1248
    :goto_56
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    .line 1249
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v4

    .line 1273
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .local v4, "showing":Z
    :goto_73
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-nez v4, :cond_1b2

    move v5, v6

    :goto_7a
    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1274
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$2100(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v6

    if-nez v6, :cond_89

    if-eqz v4, :cond_8b

    :cond_89
    const/16 v7, 0x8

    :cond_8b
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    goto/16 :goto_d

    .line 1238
    .end local v4    # "showing":Z
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_90
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_fc

    .line 1239
    iget v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1240
    iget-boolean v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v5, :cond_cc

    .line 1241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vthumb://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_56

    .line 1243
    :cond_cc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thumb://"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56

    .line 1246
    :cond_fc
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_56

    .line 1252
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_101
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15b

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15b

    .line 1253
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1257
    .local v3, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :goto_121
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_168

    .line 1258
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1266
    :goto_134
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    .line 1267
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1a6

    .line 1268
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v4

    .restart local v4    # "showing":Z
    goto/16 :goto_73

    .line 1255
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v4    # "showing":Z
    :cond_15b
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    goto :goto_121

    .line 1259
    :cond_168
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    if-eqz v5, :cond_184

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_184

    .line 1260
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_134

    .line 1261
    :cond_184
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_1a2

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v5, :cond_1a2

    .line 1262
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v5, v10, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_134

    .line 1264
    :cond_1a2
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_134

    .line 1270
    :cond_1a6
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v4

    .restart local v4    # "showing":Z
    goto/16 :goto_73

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_1b2
    move v5, v7

    .line 1273
    goto/16 :goto_7a

    .line 1277
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v1    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v4    # "showing":Z
    :pswitch_1b5
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1278
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_d

    .line 1279
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1280
    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1281
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 1224
    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1b5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, -0x1

    .line 1166
    packed-switch p2, :pswitch_data_4a

    .line 1212
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1213
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    move-object v3, v1

    .line 1214
    .local v3, "view":Landroid/view/View;
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 1215
    .local v2, "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1216
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    :goto_1f
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 1168
    .end local v3    # "view":Landroid/view/View;
    :pswitch_25
    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v5, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z
    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$2100(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v4, 0x8

    :goto_42
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1208
    move-object v3, v0

    .line 1209
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_1f

    .line 1207
    .end local v3    # "view":Landroid/view/View;
    :cond_47
    const/4 v4, 0x0

    goto :goto_42

    .line 1166
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method

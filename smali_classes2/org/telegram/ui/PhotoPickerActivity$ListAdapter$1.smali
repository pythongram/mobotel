.class Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    .prologue
    .line 1169
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1173
    .local v0, "index":I
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 1174
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1175
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1176
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 1178
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 1179
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotoAtIndex(I)V

    .line 1184
    :goto_61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    .line 1203
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :goto_7c
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 1204
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    .line 1205
    return-void

    .line 1182
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_ac
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 1186
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_be
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_144

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_144

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1193
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :goto_103
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    .line 1194
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 1196
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    .line 1197
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->updatePhotoAtIndex(I)V

    .line 1201
    :goto_12b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    goto/16 :goto_7c

    .line 1191
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_144
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    goto :goto_103

    .line 1199
    :cond_163
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12b
.end method

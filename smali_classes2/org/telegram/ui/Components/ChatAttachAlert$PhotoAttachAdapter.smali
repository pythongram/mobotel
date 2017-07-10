.class Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAttachAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1966
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1964
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    .line 1967
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    .line 1968
    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    .prologue
    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public clearSelectedPhotos()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1971
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1972
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1973
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1974
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 1975
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 1976
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 1977
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_13

    .line 1979
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1980
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 1981
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1983
    :cond_3e
    return-void
.end method

.method public createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .registers 3

    .prologue
    .line 1986
    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;-><init>(Landroid/content/Context;)V

    .line 1987
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V

    .line 2005
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 2060
    const/4 v0, 0x0

    .line 2061
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2062
    add-int/lit8 v0, v0, 0x1

    .line 2064
    :cond_b
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_18

    .line 2065
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2067
    :cond_18
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 2073
    const/4 v0, 0x1

    .line 2075
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2035
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 2014
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p2, :cond_57

    .line 2015
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2016
    add-int/lit8 p2, p2, -0x1

    .line 2018
    :cond_15
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 2019
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2020
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_55

    const/4 v2, 0x1

    :goto_30
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 2021
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 2022
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setTag(Ljava/lang/Object;)V

    .line 2023
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setTag(Ljava/lang/Object;)V

    .line 2031
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_54
    :goto_54
    return-void

    .restart local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_55
    move v2, v3

    .line 2020
    goto :goto_30

    .line 2024
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_54

    if-nez p2, :cond_54

    .line 2025
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->isInitied()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2026
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54

    .line 2028
    :cond_7c
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_54
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 2041
    packed-switch p2, :pswitch_data_38

    .line 2046
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 2047
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2048
    .local v0, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2055
    :goto_25
    return-object v0

    .line 2043
    .end local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :pswitch_26
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    .line 2044
    .restart local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    goto :goto_25

    .line 2050
    .end local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_33
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v0

    .restart local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    goto :goto_25

    .line 2041
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

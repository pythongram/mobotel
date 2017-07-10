.class Lorg/telegram/ui/Components/ChatAttachAlert$6;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 572
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_15

    .line 597
    :cond_14
    :goto_14
    return-void

    .line 579
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_76

    .line 580
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 581
    add-int/lit8 p2, p2, -0x1

    .line 583
    :cond_29
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_14

    .line 586
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    .line 587
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-ltz p2, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_14

    .line 590
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 591
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 592
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_14

    .line 595
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_76
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$6;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->openCamera()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    goto :goto_14
.end method

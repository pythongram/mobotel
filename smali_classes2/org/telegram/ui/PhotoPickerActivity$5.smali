.class Lorg/telegram/ui/PhotoPickerActivity$5;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->isVideo:Z

    if-eqz v1, :cond_93

    .line 306
    if-ltz p2, :cond_27

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_28

    .line 363
    :cond_27
    :goto_27
    return-void

    .line 310
    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 311
    .local v2, "path":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v1, v8, :cond_82

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "videoPath"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v9, Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/VideoEditorActivity;-><init>(Landroid/os/Bundle;)V

    .line 315
    .local v9, "fragment":Lorg/telegram/ui/VideoEditorActivity;
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$5$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$5$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity$5;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/VideoEditorActivity;->setDelegate(Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;)V

    .line 333
    invoke-virtual {v9}, Lorg/telegram/ui/VideoEditorActivity;->onFragmentCreate()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v1

    move-wide v6, v4

    move-object v8, v3

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    goto :goto_27

    .line 336
    :cond_6c
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1700(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1, v9, v7, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 337
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/VideoEditorActivity;->setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V

    goto :goto_27

    .line 340
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v9    # "fragment":Lorg/telegram/ui/VideoEditorActivity;
    :cond_82
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v1

    move-wide v6, v4

    move-object v8, v3

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    goto :goto_27

    .line 345
    .end local v2    # "path":Ljava/lang/String;
    :cond_93
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    .line 354
    .local v4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_a3
    if-ltz p2, :cond_27

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 357
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 360
    :cond_c0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 361
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2100(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_109

    :goto_d9
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto/16 :goto_27

    .line 348
    .end local v4    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_e7
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_102

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_102

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto :goto_a3

    .line 351
    .end local v4    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_102
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto :goto_a3

    :cond_109
    move v6, v7

    .line 361
    goto :goto_d9
.end method

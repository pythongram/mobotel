.class Lorg/telegram/ui/LocationActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # setter for: Lorg/telegram/ui/LocationActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$202(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # setter for: Lorg/telegram/ui/LocationActivity;->searchWas:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$702(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$400(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    .line 251
    return-void
.end method

.method public onSearchExpand()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/LocationActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/LocationActivity;->access$202(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$400(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 255
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    if-nez v1, :cond_9

    .line 263
    :goto_8
    return-void

    .line 258
    :cond_9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/LocationActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$702(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 262
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$2;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->searchDelayed(Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_8
.end method

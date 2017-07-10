.class Lorg/telegram/ui/PhotoAlbumPickerActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoAlbumPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->finishFragment()V

    .line 150
    :cond_a
    :goto_a
    return-void

    .line 128
    :cond_b
    if-ne p1, v1, :cond_24

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->finishFragment(Z)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->startPhotoSelectActivity()V

    goto :goto_a

    .line 133
    :cond_24
    const/4 v0, 0x2

    if-ne p1, v0, :cond_62

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PickerPhotos"

    const v2, 0x7f070453

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "NoPhotos"

    const v2, 0x7f070362

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_a

    .line 141
    :cond_62
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # setter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PickerVideo"

    const v2, 0x7f070454

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "NoVideo"

    const v2, 0x7f070372

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;->this$0:Lorg/telegram/ui/PhotoAlbumPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a
.end method

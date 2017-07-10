.class Lorg/telegram/ui/VideoEditorActivity$19;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 1160
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 1163
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_a

    .line 1181
    :cond_9
    :goto_9
    return v2

    .line 1166
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1167
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1168
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1170
    const-string v2, "ClearSearch"

    const v3, 0x7f07017e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1171
    const-string v2, "ClearButton"

    const v3, 0x7f070178

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/VideoEditorActivity$19$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VideoEditorActivity$19$1;-><init>(Lorg/telegram/ui/VideoEditorActivity$19;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1177
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1178
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$19;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/VideoEditorActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1179
    const/4 v2, 0x1

    goto :goto_9
.end method

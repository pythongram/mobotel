.class Lorg/telegram/ui/CallLogActivity$4;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    if-ltz p2, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_12

    :cond_10
    move v1, v2

    .line 246
    :goto_11
    return v1

    .line 234
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 235
    .local v0, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/CallLogActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Calls"

    const v5, 0x7f0700fb

    .line 236
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "Delete"

    const v6, 0x7f0701c7

    .line 238
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v2, Lorg/telegram/ui/CallLogActivity$4$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/CallLogActivity$4$1;-><init>(Lorg/telegram/ui/CallLogActivity$4;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    .line 237
    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_11
.end method

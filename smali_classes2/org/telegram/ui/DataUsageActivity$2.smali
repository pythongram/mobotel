.class Lorg/telegram/ui/DataUsageActivity$2;
.super Ljava/lang/Object;
.source "DataUsageActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataUsageActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DataUsageActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataUsageActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DataUsageActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 210
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DataUsageActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 227
    :cond_8
    :goto_8
    return-void

    .line 213
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    # getter for: Lorg/telegram/ui/DataUsageActivity;->resetRow:I
    invoke-static {v1}, Lorg/telegram/ui/DataUsageActivity;->access$000(Lorg/telegram/ui/DataUsageActivity;)I

    move-result v1

    if-ne p2, v1, :cond_8

    .line 214
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DataUsageActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 216
    const-string v1, "ResetStatisticsAlert"

    const v2, 0x7f07049b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 217
    const-string v1, "Reset"

    const v2, 0x7f07048d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DataUsageActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DataUsageActivity$2$1;-><init>(Lorg/telegram/ui/DataUsageActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 224
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/DataUsageActivity$2;->this$0:Lorg/telegram/ui/DataUsageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DataUsageActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8
.end method

.class Lorg/telegram/ui/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pressCount:I

.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SettingsActivity$5;->pressCount:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 624
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v4}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v4

    if-ne p2, v4, :cond_79

    .line 625
    iget v4, p0, Lorg/telegram/ui/SettingsActivity$5;->pressCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/SettingsActivity$5;->pressCount:I

    .line 626
    iget v4, p0, Lorg/telegram/ui/SettingsActivity$5;->pressCount:I

    if-lt v4, v6, :cond_63

    .line 627
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "DebugMenu"

    const v5, 0x7f0701c2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 629
    new-array v4, v6, [Ljava/lang/CharSequence;

    const-string v5, "DebugMenuImportContacts"

    const v6, 0x7f0701c3

    .line 630
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "DebugMenuReloadContacts"

    const v5, 0x7f0701c4

    .line 631
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    new-instance v3, Lorg/telegram/ui/SettingsActivity$5$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SettingsActivity$5$1;-><init>(Lorg/telegram/ui/SettingsActivity$5;)V

    .line 629
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 642
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 643
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 653
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :goto_62
    return v2

    .line 646
    :cond_63
    :try_start_63
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "\u00af\\_(\u30c4)_/\u00af"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_73} :catch_74

    goto :goto_62

    .line 647
    :catch_74
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_62

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_79
    move v2, v3

    .line 653
    goto :goto_62
.end method

.class Lorg/telegram/ui/SettingsActivity$5$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$5;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$5;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$5;

    .prologue
    .line 632
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5$1;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 635
    if-nez p2, :cond_b

    .line 636
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 640
    :cond_a
    :goto_a
    return-void

    .line 637
    :cond_b
    if-ne p2, v2, :cond_a

    .line 638
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    goto :goto_a
.end method

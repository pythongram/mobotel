.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Landroid/content/SharedPreferences;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    const-string v5, "specific_contact"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    .local v1, "specificContact":Z
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    if-nez v1, :cond_5a

    move v2, v3

    :goto_f
    # setter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->checked:Z
    invoke-static {v5, v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->access$002(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;Z)Z

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "specific_contact"

    if-nez v1, :cond_5c

    move v2, v3

    :goto_1d
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->checked:Z
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 93
    const-string v2, "specific_contact_service"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->enableSCSTextCheck:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 96
    :cond_34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_43

    .line 98
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "v":Landroid/view/View;
    if-nez v1, :cond_40

    move v4, v3

    :cond_40
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 100
    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "EnableSpecialContactsServiceDetails"

    const v5, 0x7f0706db

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p1    # "v":Landroid/view/View;
    :cond_5a
    move v2, v4

    .line 89
    goto :goto_f

    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5c
    move v2, v4

    .line 91
    goto :goto_1d
.end method

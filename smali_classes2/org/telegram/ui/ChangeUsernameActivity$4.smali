.class Lorg/telegram/ui/ChangeUsernameActivity$4;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 11
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 194
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_82

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v5}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "url":Ljava/lang/String;
    const-string v4, "UsernameHelpLink"

    const v5, 0x7f070566

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "index":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    .local v2, "textSpan":Landroid/text/SpannableStringBuilder;
    new-instance v4, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;

    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;
    invoke-static {v6}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\n\n"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v0    # "index":I
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textSpan":Landroid/text/SpannableStringBuilder;
    .end local v3    # "url":Ljava/lang/String;
    :goto_81
    return-void

    .line 202
    :cond_82
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;
    invoke-static {v5}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_81
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    :goto_8
    return-void

    .line 189
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$400(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z

    goto :goto_8
.end method

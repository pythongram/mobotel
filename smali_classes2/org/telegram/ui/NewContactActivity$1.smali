.class Lorg/telegram/ui/NewContactActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "NewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/NewContactActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 12
    .param p1, "id"    # I

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 113
    const/4 v4, -0x1

    if-ne p1, v4, :cond_f

    .line 114
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/NewContactActivity;->finishFragment()V

    .line 196
    :cond_e
    :goto_e
    return-void

    .line 115
    :cond_f
    if-ne p1, v5, :cond_e

    .line 116
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->donePressed:Z
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$000(Lorg/telegram/ui/NewContactActivity;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$100(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-nez v4, :cond_42

    .line 120
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 121
    .local v3, "v":Landroid/os/Vibrator;
    if-eqz v3, :cond_38

    .line 122
    invoke-virtual {v3, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 124
    :cond_38
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$100(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_e

    .line 127
    .end local v3    # "v":Landroid/os/Vibrator;
    :cond_42
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-nez v4, :cond_6b

    .line 128
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 129
    .restart local v3    # "v":Landroid/os/Vibrator;
    if-eqz v3, :cond_61

    .line 130
    invoke-virtual {v3, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 132
    :cond_61
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_e

    .line 135
    .end local v3    # "v":Landroid/os/Vibrator;
    :cond_6b
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v4

    if-nez v4, :cond_95

    .line 136
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/NewContactActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 137
    .restart local v3    # "v":Landroid/os/Vibrator;
    if-eqz v3, :cond_8a

    .line 138
    invoke-virtual {v3, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 140
    :cond_8a
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto/16 :goto_e

    .line 143
    .end local v3    # "v":Landroid/os/Vibrator;
    :cond_95
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # setter for: Lorg/telegram/ui/NewContactActivity;->donePressed:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/NewContactActivity;->access$002(Lorg/telegram/ui/NewContactActivity;Z)Z

    .line 144
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # invokes: Lorg/telegram/ui/NewContactActivity;->showEditDoneProgress(ZZ)V
    invoke-static {v4, v5, v5}, Lorg/telegram/ui/NewContactActivity;->access$400(Lorg/telegram/ui/NewContactActivity;ZZ)V

    .line 145
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 146
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 147
    .local v0, "inputPhoneContact":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$100(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->lastNameField:Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/NewContactActivity;->access$500(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->codeField:Landroid/widget/EditText;
    invoke-static {v5}, Lorg/telegram/ui/NewContactActivity;->access$200(Lorg/telegram/ui/NewContactActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v5}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 150
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/NewContactActivity$1$1;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/ui/NewContactActivity$1$1;-><init>(Lorg/telegram/ui/NewContactActivity$1;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    .line 194
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/NewContactActivity$1;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->classGuid:I
    invoke-static {v5}, Lorg/telegram/ui/NewContactActivity;->access$600(Lorg/telegram/ui/NewContactActivity;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_e
.end method

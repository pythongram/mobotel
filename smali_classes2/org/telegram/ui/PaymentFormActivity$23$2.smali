.class Lorg/telegram/ui/PaymentFormActivity$23$2;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$23;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$23;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$23;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$23;

    .prologue
    .line 2151
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2400(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_35

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_e4

    :cond_23
    :goto_23
    packed-switch v0, :pswitch_data_10a

    .line 2186
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v3, v3, Lorg/telegram/ui/PaymentFormActivity$23;->val$req:Lorg/telegram/tgnet/TLObject;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 2190
    :cond_35
    :goto_35
    return-void

    .line 2157
    :sswitch_36
    const-string v7, "REQ_INFO_NAME_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v1

    goto :goto_23

    :sswitch_40
    const-string v7, "REQ_INFO_PHONE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v2

    goto :goto_23

    :sswitch_4a
    const-string v7, "REQ_INFO_EMAIL_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v3

    goto :goto_23

    :sswitch_54
    const-string v7, "ADDRESS_COUNTRY_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v4

    goto :goto_23

    :sswitch_5e
    const-string v7, "ADDRESS_CITY_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move v0, v5

    goto :goto_23

    :sswitch_68
    const-string v7, "ADDRESS_POSTCODE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v0, 0x5

    goto :goto_23

    :sswitch_72
    const-string v7, "ADDRESS_STATE_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v0, 0x6

    goto :goto_23

    :sswitch_7c
    const-string v7, "ADDRESS_STREET_LINE1_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v0, 0x7

    goto :goto_23

    :sswitch_86
    const-string v7, "ADDRESS_STREET_LINE2_INVALID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v0, 0x8

    goto :goto_23

    .line 2159
    :pswitch_91
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x6

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_35

    .line 2162
    :pswitch_9a
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/16 v1, 0x9

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_35

    .line 2165
    :pswitch_a4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x7

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_35

    .line 2168
    :pswitch_ad
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v5}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto :goto_35

    .line 2171
    :pswitch_b5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_35

    .line 2174
    :pswitch_be
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x5

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_35

    .line 2177
    :pswitch_c8
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_35

    .line 2180
    :pswitch_d1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_35

    .line 2183
    :pswitch_da
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$23$2;->this$1:Lorg/telegram/ui/PaymentFormActivity$23;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V
    invoke-static {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$4100(Lorg/telegram/ui/PaymentFormActivity;I)V

    goto/16 :goto_35

    .line 2157
    nop

    :sswitch_data_e4
    .sparse-switch
        -0x7cbd4a72 -> :sswitch_5e
        -0x60c55d5c -> :sswitch_7c
        -0x48f7785d -> :sswitch_54
        -0x3d7f496d -> :sswitch_36
        -0x105574d0 -> :sswitch_68
        0x18e1a6de -> :sswitch_72
        0x2a39af76 -> :sswitch_40
        0x337f11a5 -> :sswitch_86
        0x34feafa4 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_91
        :pswitch_9a
        :pswitch_a4
        :pswitch_ad
        :pswitch_b5
        :pswitch_be
        :pswitch_c8
        :pswitch_d1
        :pswitch_da
    .end packed-switch
.end method

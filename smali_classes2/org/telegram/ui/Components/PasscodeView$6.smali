.class Lorg/telegram/ui/Components/PasscodeView$6;
.super Ljava/lang/Object;
.source "PasscodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 672
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 676
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_a6

    .line 711
    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->lenght()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_20

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PasscodeView;->access$400(Lorg/telegram/ui/Components/PasscodeView;Z)V

    .line 714
    :cond_20
    return-void

    .line 678
    :pswitch_21
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 681
    :pswitch_2d
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 684
    :pswitch_39
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 687
    :pswitch_45
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 690
    :pswitch_51
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 693
    :pswitch_5d
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 696
    :pswitch_69
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 699
    :pswitch_75
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 702
    :pswitch_81
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto :goto_d

    .line 705
    :pswitch_8d
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->appendCharacter(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 708
    :pswitch_9a
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView;->passwordEditText2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PasscodeView;->access$600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseLastCharacter()V

    goto/16 :goto_d

    .line 676
    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_45
        :pswitch_51
        :pswitch_5d
        :pswitch_69
        :pswitch_75
        :pswitch_81
        :pswitch_8d
        :pswitch_9a
    .end packed-switch
.end method

.class Lorg/telegram/ui/MediaActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 554
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    .line 571
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2302(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2702(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    .line 574
    return-void

    .line 566
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_1d

    .line 568
    :cond_40
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public onSearchExpand()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity;->access$2302(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 559
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .registers 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x1

    .line 578
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity;->access$2702(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 581
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    .line 583
    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    if-ne v1, v2, :cond_34

    .line 584
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 599
    :cond_29
    :goto_29
    return-void

    .line 587
    :cond_2a
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_29

    .line 588
    :cond_34
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4f

    .line 589
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 592
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_29

    .line 593
    :cond_4f
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 597
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_29
.end method

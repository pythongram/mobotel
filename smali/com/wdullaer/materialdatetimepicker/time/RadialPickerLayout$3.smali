.class Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidSelection(I)Z
    .registers 7
    .param p1, "selection"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-static {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v4

    invoke-direct {v0, p1, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 200
    .local v0, "newTime":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$200(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-ne v3, v1, :cond_2e

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setPM()V

    .line 201
    :cond_2e
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$200(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 202
    :cond_41
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->this$0:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    # getter for: Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;
    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->access$100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result v3

    if-nez v3, :cond_4e

    :goto_4d
    return v1

    :cond_4e
    move v1, v2

    goto :goto_4d
.end method

.class Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "AnsweingMachineSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 274
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 275
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 299
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 355
    const/4 v0, 0x0

    .line 364
    :cond_a
    :goto_a
    return v0

    .line 357
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->AnsweringMachineSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$1000(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_15

    .line 358
    const/4 v0, 0x1

    goto :goto_a

    .line 359
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1f

    .line 360
    const/4 v0, 0x3

    goto :goto_a

    .line 361
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    goto :goto_a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 309
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 311
    .local v2, "type":I
    if-nez v2, :cond_1e

    .line 312
    if-nez p2, :cond_11

    .line 313
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    move-object v4, p2

    .line 315
    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    :cond_1c
    :goto_1c
    move-object v3, p2

    .line 349
    .end local p2    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    :goto_1d
    return-object v3

    .line 316
    .end local v3    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1e
    if-ne v2, v8, :cond_2a

    .line 317
    if-nez p2, :cond_1c

    .line 318
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto :goto_1c

    .line 320
    :cond_2a
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9c

    .line 321
    if-nez p2, :cond_36

    .line 322
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_36
    move-object v1, p2

    .line 324
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 325
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_65

    .line 326
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "AnsweringMachineTitle"

    const v5, 0x7f070646

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "answeringmachineanswer"

    const-string v6, "AnsweringmachineDefaulttext"

    const v7, 0x7f070647

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1c

    .line 328
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_65
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1c

    .line 329
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "AnsweringMachineTimeTitle"

    const v5, 0x7f070645

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "answeringmachinetime"

    const/4 v7, 0x5

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1c

    .line 332
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_9c
    const/4 v4, 0x3

    if-ne v2, v4, :cond_d0

    .line 333
    if-nez p2, :cond_a8

    .line 334
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a8
    move-object v1, p2

    .line 336
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 338
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1c

    .line 341
    const-string v4, "EnableAnseringMachin"

    const v5, 0x7f0706d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "answeringmachine"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v4, v5, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    move-object v3, p2

    .line 342
    .end local p2    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_1d

    .line 344
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v3    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_d0
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1c

    .line 345
    if-nez p2, :cond_1c

    .line 346
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto/16 :goto_1c
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->TypeCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$1100(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

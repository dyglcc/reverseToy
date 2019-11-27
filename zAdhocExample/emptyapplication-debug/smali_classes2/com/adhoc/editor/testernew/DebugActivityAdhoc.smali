.class public Lcom/adhoc/editor/testernew/DebugActivityAdhoc;
.super Landroid/app/Activity;
.source "DebugActivityAdhoc.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adhoc/editor/testernew/DebugActivityAdhoc$AdhocHanlder;
    }
.end annotation


# static fields
.field private static CURRENT_EXP_KEY:Ljava/lang/String; = null

.field public static final FAIL_JOIN_EXP:I = 0x0

.field public static final REQUEST_CAMERA_CODE:I = 0x1

.field public static final SCAN_CODE:I = 0x1

.field public static final SUCCESS_JOIN_EXP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdhocDebugActivity"

.field public static final UPDATE_FLAG_FAILED:I = 0x3

.field public static final UPDATE_FLAG_SUCCESS:I = 0x2


# instance fields
.field private mBtnEditor:Landroid/widget/Button;

.field private mClientid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTvScannerResult:Landroid/widget/TextView;

.field private mTvStatus:Landroid/widget/TextView;

.field private mTvStatusTips:Landroid/widget/TextView;

.field private mTvVersionName:Landroid/widget/TextView;

.field private mTvVersionNew:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "current_exp"

    sput-object v0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->CURRENT_EXP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->CURRENT_EXP_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V
    .registers 1
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showRequestCameraPermissionError()V

    return-void
.end method

.method private dealScanResut(ILandroid/content/Intent;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 125
    if-nez p2, :cond_9

    .line 127
    const-string v1, "\u63a5\u53d7\u7684\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/adhoc/editor/testernew/AdhocT;->i(Ljava/lang/String;)V

    .line 142
    :cond_8
    :goto_8
    return-void

    .line 130
    :cond_9
    if-ne p1, v3, :cond_39

    .line 131
    const-string v1, "result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "Qrcode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealScanResut: Qrcode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 134
    const-string v1, "23462"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 135
    invoke-direct {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->save2Server(Ljava/lang/String;)V

    goto :goto_8

    .line 139
    .end local v0    # "Qrcode":Ljava/lang/String;
    :cond_39
    if-nez p1, :cond_8

    .line 140
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvScannerResult:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private deleteForceClient()V
    .registers 2

    .prologue
    .line 248
    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showLoadingDialog(Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;

    invoke-direct {v0, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$2;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V

    invoke-static {v0}, Lcom/adhoc/editor/EditorUtilsAdhoc;->exitDebugExperiment(Lcom/adhoc/editor/IAdhocDebug;)V

    .line 299
    return-void
.end method

.method private getClientId()V
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mClientid:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mClientid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 160
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    sget v1, Lcom/adhoc/abtestlite/R$string;->adhoc_client_id_empty_tips:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->finish()V

    .line 163
    :cond_1c
    return-void
.end method

.method private getLatestVersion()V
    .registers 1

    .prologue
    .line 201
    return-void
.end method

.method private getStatusResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "expName"    # Ljava/lang/String;

    .prologue
    .line 121
    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_enter_experiment_tip:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    .line 80
    sget v1, Lcom/adhoc/abtestlite/R$id;->tv_status:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/adhoc/abtestlite/R$id;->tv_scan_result:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvScannerResult:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/adhoc/abtestlite/R$id;->tv_status_tip:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/adhoc/abtestlite/R$id;->tv_adhoc_sdk_version_name:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvVersionName:Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/adhoc/abtestlite/R$id;->tv_adhoc_sdk_new_version:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvVersionNew:Landroid/widget/TextView;

    .line 87
    sget v1, Lcom/adhoc/abtestlite/R$id;->btn_editor:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mBtnEditor:Landroid/widget/Button;

    .line 91
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mBtnEditor:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->refreshBtnEditorState()V

    .line 94
    sget v1, Lcom/adhoc/abtestlite/R$id;->btn_scan:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v1, Lcom/adhoc/abtestlite/R$id;->btn_quit_experiment:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->getInstance()Lcom/adhoc/editor/testernew/AdhocShareUtils;

    move-result-object v1

    sget-object v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->CURRENT_EXP_KEY:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "expName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 99
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getStatusResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;

    sget v2, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_tips_3:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    sget v1, Lcom/adhoc/abtestlite/R$id;->btn_quit_experiment:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_8d
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvVersionName:Landroid/widget/TextView;

    const-string v2, "SDK\u7248\u672c\u53f7\uff1a%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/adhoc/adhocsdk/AdhocTracker;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getLatestVersion()V

    .line 111
    return-void

    .line 103
    :cond_a5
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;

    sget v2, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_tips_1:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;

    sget v2, Lcom/adhoc/abtestlite/R$string;->adhoc_no_experiments:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    sget v1, Lcom/adhoc/abtestlite/R$id;->btn_quit_experiment:I

    invoke-virtual {p0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8d
.end method

.method private refreshBtnEditorState()V
    .registers 3

    .prologue
    .line 114
    invoke-static {}, Lcom/adhoc/editor/EditorUtilsAdhoc;->isMin()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mBtnEditor:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    :cond_d
    iget-object v1, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mBtnEditor:Landroid/widget/Button;

    invoke-static {}, Lcom/adhoc/editor/EditorUtilsAdhoc;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_editor_out:I

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 118
    return-void

    .line 117
    :cond_1b
    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_editor_in:I

    goto :goto_17
.end method

.method private save2Server(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 204
    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showLoadingDialog(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;

    invoke-direct {v0, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$1;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V

    invoke-static {p1, v0}, Lcom/adhoc/editor/EditorUtilsAdhoc;->intoDebugExperiment(Ljava/lang/String;Lcom/adhoc/editor/IAdhocDebug;)V

    .line 245
    return-void
.end method

.method private secondDeniedPermissionAlert(Ljava/lang/String;I)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/adhoc/abtestlite/R$string;->adhoc_warning:I

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/adhoc/abtestlite/R$string;->adhoc_camera_permission_tip_message:I

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$5;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;Ljava/lang/String;I)V

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$4;

    invoke-direct {v2, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$4;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void
.end method

.method private showRequestCameraPermissionError()V
    .registers 2

    .prologue
    .line 399
    sget v0, Lcom/adhoc/abtestlite/R$string;->adhoc_camera_no_permission_tip:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private startScanCode()V
    .registers 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    .line 433
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 435
    :cond_f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->dismiss()V

    .line 335
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_a8

    .line 377
    :goto_a
    return v7

    .line 338
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 339
    .local v1, "bundleE":Landroid/os/Bundle;
    const-string v2, ""

    .line 340
    .local v2, "expName":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 341
    const-string v4, "exp"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    :cond_19
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatusTips:Landroid/widget/TextView;

    sget v5, Lcom/adhoc/abtestlite/R$string;->adhoc_tester_tips_3:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mTvStatus:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getStatusResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-static {}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->getInstance()Lcom/adhoc/editor/testernew/AdhocShareUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->CURRENT_EXP_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/adhoc/editor/testernew/AdhocShareUtils;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    sget v5, Lcom/adhoc/abtestlite/R$string;->adhoc_joined_experiment:I

    invoke-virtual {p0, v5}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    sget v4, Lcom/adhoc/abtestlite/R$string;->adhoc_get_flag_tip_message:I

    invoke-virtual {p0, v4}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showLoadingDialog(Ljava/lang/String;)V

    .line 348
    new-instance v4, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$3;

    invoke-direct {v4, p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc$3;-><init>(Lcom/adhoc/editor/testernew/DebugActivityAdhoc;)V

    invoke-static {v4}, Lcom/adhoc/adhocsdk/AdhocTracker;->asyncGetFlag(Lcom/adhoc/adhocsdk/OnAdHocReceivedData;)Z

    goto :goto_a

    .line 359
    .end local v1    # "bundleE":Landroid/os/Bundle;
    .end local v2    # "expName":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 360
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_71

    .line 361
    const-string v4, "reson"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "reason":Ljava/lang/String;
    sget v4, Lcom/adhoc/abtestlite/R$string;->adhoc_join_experiment_failed:I

    invoke-virtual {p0, v4}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 363
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 365
    .end local v3    # "reason":Ljava/lang/String;
    :cond_71
    sget v4, Lcom/adhoc/abtestlite/R$string;->adhoc_join_experiment_failed:I

    invoke-virtual {p0, v4}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/adhoc/abtestlite/R$string;->adhoc_failed_unknown:I

    invoke-virtual {p0, v6}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .restart local v3    # "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 370
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_8b
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    sget v5, Lcom/adhoc/abtestlite/R$string;->adhoc_common_success:I

    invoke-virtual {p0, v5}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->finish()V

    goto/16 :goto_a

    .line 374
    :pswitch_9b
    iget-object v4, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mContext:Landroid/content/Context;

    sget v5, Lcom/adhoc/abtestlite/R$string;->adhoc_commmon_failed:I

    invoke-virtual {p0, v5}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adhoc/editor/testernew/AdhocToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 335
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_51
        :pswitch_b
        :pswitch_8b
        :pswitch_9b
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 147
    invoke-direct {p0, p2, p3}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->dealScanResut(ILandroid/content/Intent;)V

    .line 149
    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 305
    .local v0, "id":I
    sget v5, Lcom/adhoc/abtestlite/R$id;->btn_editor:I

    if-ne v0, v5, :cond_1b

    .line 306
    invoke-static {}, Lcom/adhoc/editor/EditorUtilsAdhoc;->isEditing()Z

    move-result v1

    .line 307
    .local v1, "isDebug":Z
    if-nez v1, :cond_19

    :goto_f
    invoke-static {v4}, Lcom/adhoc/editor/EditorUtilsAdhoc;->setEditing(Z)V

    .line 308
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->refreshBtnEditorState()V

    .line 309
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->finish()V

    .line 329
    .end local v1    # "isDebug":Z
    :cond_18
    :goto_18
    return-void

    .line 307
    .restart local v1    # "isDebug":Z
    :cond_19
    const/4 v4, 0x0

    goto :goto_f

    .line 310
    .end local v1    # "isDebug":Z
    :cond_1b
    sget v4, Lcom/adhoc/abtestlite/R$id;->btn_scan:I

    if-ne v0, v4, :cond_40

    .line 312
    :try_start_1f
    const-string v2, "android.permission.CAMERA"

    .line 313
    .local v2, "permission":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/adhoc/editor/testernew/AdhocUtil;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 314
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->startScanCode()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_18

    .line 320
    .end local v2    # "permission":Ljava/lang/String;
    :catch_2b
    move-exception v3

    .line 321
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->startScanCode()V

    goto :goto_18

    .line 315
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 316
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->secondDeniedPermissionAlert(Ljava/lang/String;I)V

    goto :goto_18

    .line 318
    :cond_3b
    const/4 v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/adhoc/editor/testernew/AdhocUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3f} :catch_2b

    goto :goto_18

    .line 325
    .end local v2    # "permission":Ljava/lang/String;
    :cond_40
    sget v4, Lcom/adhoc/abtestlite/R$id;->btn_quit_experiment:I

    if-ne v0, v4, :cond_18

    .line 326
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->deleteForceClient()V

    goto :goto_18
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/adhoc/abtestlite/R$layout;->activity_adhoc_debug:I

    invoke-virtual {p0, v0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lcom/adhoc/editor/testernew/AdhocCacheUtils;->init(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->initViews()V

    .line 63
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->getClientId()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 404
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 405
    packed-switch p1, :pswitch_data_1e

    .line 419
    :goto_6
    return-void

    .line 407
    :pswitch_7
    array-length v1, p2

    if-eqz v1, :cond_d

    array-length v1, p3

    if-nez v1, :cond_11

    .line 408
    :cond_d
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showRequestCameraPermissionError()V

    goto :goto_6

    .line 411
    :cond_11
    const/4 v1, 0x0

    aget v0, p3, v1

    .line 412
    .local v0, "result":I
    if-eqz v0, :cond_1a

    .line 413
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->showRequestCameraPermissionError()V

    goto :goto_6

    .line 416
    :cond_1a
    invoke-direct {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->startScanCode()V

    goto :goto_6

    .line 405
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 423
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_11

    .line 424
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 426
    :cond_11
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 429
    :cond_1b
    return-void
.end method

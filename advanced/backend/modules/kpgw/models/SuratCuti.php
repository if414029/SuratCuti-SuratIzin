<?php

namespace backend\modules\kpgw\models;

use Yii;

/**
 * This is the model class for table "kpgw_surat_cuti".
 *
 * @property integer $surat_cuti_id
 * @property integer $user_id
 * @property integer $kategori_surat_cuti_id
 * @property string $tanggal_berangkat
 * @property string $tanggal_kembali
 * @property string $alasan
 * @property string $pengalihan_tugas
 * @property string $status_approvingAtasan
 * @property string $status_approvingWR
 * @property string $status_broadcast
 * @property integer $deleted
 * @property string $created_at
 * @property string $created_by
 * @property string $updated_at
 * @property string $updated_by
 * @property string $deleted_at
 * @property string $deleted_by
 *
 * @property KpgwRKategoriSuratCuti $kategoriSuratCuti
 * @property SysxUser $user
 */
class SuratCuti extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'kpgw_surat_cuti';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'kategori_surat_cuti_id', 'deleted'], 'integer'],
            [['tanggal_berangkat', 'tanggal_kembali', 'created_at', 'updated_at', 'deleted_at'], 'safe'],
            [['alasan', 'pengalihan_tugas'], 'string', 'max' => 255],
            [['status_approvingAtasan', 'status_approvingWR', 'status_broadcast'], 'string', 'max' => 20],
            [['created_by', 'updated_by', 'deleted_by'], 'string', 'max' => 32],
            [['kategori_surat_cuti_id'], 'exist', 'skipOnError' => true, 'targetClass' => KategoriSuratCuti::className(), 'targetAttribute' => ['kategori_surat_cuti_id' => 'kategori_surat_cuti_id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'user_id']],

            [['kategori_surat_cuti_id'],'required', 'message'=>'Kategori surat tidak boleh kosong'],
            ['tanggal_kembali','compare', 'compareAttribute'=>'tanggal_berangkat','operator'=>'>','message'=>'Tanggal kembali harus lebih besar dari tanggal berangkat'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'surat_cuti_id' => 'Surat Cuti',
            'user_id' => 'Nama Dosen',
            'kategori_surat_cuti_id' => 'Kategori Surat Cuti',
            'tanggal_berangkat' => 'Tanggal Berangkat',
            'tanggal_kembali' => 'Tanggal Kembali',
            'alasan' => 'Alasan',
            'pengalihan_tugas' => 'Pengalihan Tugas',
            'status_approvingAtasan' => 'Status Approving Atasan',
            'status_approvingWR' => 'Status Approving Wr',
            'status_broadcast' => 'Status Broadcast',
            'deleted' => 'Deleted',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
            'deleted_at' => 'Deleted At',
            'deleted_by' => 'Deleted By',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getKategoriSuratCuti()
    {
        return $this->hasOne(KategoriSuratCuti::className(), ['kategori_surat_cuti_id' => 'kategori_surat_cuti_id']);
    }

    public function getUserpegawai()
    {
        return $this->hasOne(Pegawai::className(), ['user_id' => 'user_id']);
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['user_id' => 'user_id']);
    }

    public function statusApproveUser(){
        $temp = SuratCuti::findAll(array('status_approvingAtasan' => 'Approved','status_approvingWR' => 'Finale_Approving','user_id'=>Yii::$app->user->identity->id));
        $coun = count($temp);
        return $coun;
    }

    public function statusRequesting() {
        $temp = SuratCuti::findAll(array('status_approvingAtasan' => 'Requesting','user_id'=>Yii::$app->user->identity->id));
        $coun = count($temp);
        return $coun;
    }

    public function statusReject() {
        $temp = SuratCuti::findAll(array('status_approvingAtasan' => 'Approved', 'status_approvingWR' => 'Reject','user_id'=>Yii::$app->user->identity->id));
        $coun = count($temp);
        return $coun;
    }
    //Batasan Joyce
    public function statusRejectbyAtasan() {
        $temp = SuratCuti::findAll(array('status_approvingAtasan' => 'Reject','user_id'=>Yii::$app->user->identity->id));
        $jumlah = count($temp);
        return $jumlah;
    }

    public function statusApprovebywr() {
        $temp = SuratCuti::findAll(array('status_approvingAtasan' => 'Approved'));
        $jumlah = count($temp);
        return $jumlah;
    }

}

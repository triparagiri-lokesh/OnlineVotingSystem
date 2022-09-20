using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineVo.Entities;
using OnlineVo.DataLayer;

namespace OnlineVo.BusinessLayer
{
    public class CandidateService
    {
        CandidateRepository repository;
        public CandidateService()
        {
            repository = new CandidateRepository();
        }
        public void AddCandidate(Candidate candidate)
        {
            try
            {
                repository.AddCandidate(candidate);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void DeleteCandidate(int candidateno)
        {
            try
            {
                repository.DeleteCandidate(candidateno);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public List<Candidate> GetCandidates()
        {
            try
            {
                return repository.GetAllCandidates();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
